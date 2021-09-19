
import matplotlib.pyplot as plt
 
name_list = ['D.tetrahedras','remesh','clean mesh','refinement','total']
num_list = [6938,19089,1533,75156,102716]
plt.bar(range(len(num_list)), num_list,color='rgb',tick_label=name_list)
plt.ylabel('Run Time (ms)')
plt.savefig('./eva3.jpg')
plt.show()
