from flask import Flask, render_template, request
from werkzeug.utils import secure_filename
from werkzeug.datastructures import  FileStorage
from flask import flash, redirect, send_file, url_for
import os

ALLOWED_EXTENSIONS = {'txt', 'pdf', 'png', 'jpg', 'jpeg', 'gif'}
#shell command of reconstruction
cmd_1 = 'openMVG_main_SfMInit_ImageListing -f 1536 -i /opt/openMVG/server/images -o /opt/openMVG/server/result/matches'
cmd_2 = 'openMVG_main_ComputeFeatures -i /opt/openMVG/server/result/matches/sfm_data.json -o /opt/openMVG/server/result/matches'
cmd_3 = 'openMVG_main_ComputeMatches -i /opt/openMVG/server/result/matches/sfm_data.json -o /opt/openMVG/server/result/matches'
cmd_4 = 'openMVG_main_IncrementalSfM -i /opt/openMVG/server/result/matches/sfm_data.json -m /opt/openMVG/server/result/matches -o /opt/openMVG/server/result/sequential_reconstruction/'

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = 'images'

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

@app.route('/')
def upload_file():
    return render_template('upload.html')

@app.route('/uploader',methods=['GET','POST'])
def uploader():
    if request.method == 'POST':
        if 'file' not in request.files:
            flash('No file part')
            return redirect(request.url)
        if 'done' in request.form:
            return redirect('http://localhost:2020/start_reconstruction')
        #    print('button')
        #    flash('start reconstruction')
        #    return render_template('upload.html') 

        f = request.files['file']
        # if user does not select file, browser also
        # submit an empty part without filename
        if f.filename == '':
            flash('No selected file')
            return redirect(request.url)
        basepath = os.path.dirname(__file__)
        upload_path = os.path.join(basepath, app.config['UPLOAD_FOLDER'],secure_filename(f.filename))
        print(request.files)
        upload_path = os.path.abspath(upload_path)
        if f and allowed_file(f.filename):
            f.save(upload_path)
            msg = 'file'+ f.filename + 'uploaded successfully'
            return render_template('upload.html',data=msg)

    else:

        return render_template('upload.html')

@app.route('/start_reconstruction',methods=['GET','POST'])
def start_reconstruction():
    if request.method == 'POST':
        if request.form.get('action1') == 'START':
            #execute shell command of reconstruction
            f1 = os.popen(cmd_1)
            print(f1.read())
            f2 = os.popen(cmd_2)
            print(f2.read())
            f3 = os.popen(cmd_3)
            print(f3.read())
            f4 = os.popen(cmd_4)
            print(f4.read())
            return redirect('/downloadfile')
        else:
            pass # unknown
    elif request.method == 'GET':
        return render_template('start_reconstruction.html')

    return render_template('start_reconstruction.html')

# Download API
@app.route("/downloadfile", methods = ['GET'])
def download_file():
    return render_template('download.html')

@app.route('/return-files')
def return_files_tut():
    file_path = '/opt/openMVG/server/result/sequential_reconstruction/cloud_and_poses.ply' 
    return send_file(file_path, as_attachment=True, attachment_filename='cloud_and_poses.ply')

if __name__ == '__main__':
   app.run(port=2020,host="0.0.0.0",debug=True)
