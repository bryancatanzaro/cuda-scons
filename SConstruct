try:
    Import('env')
except:
    exec open("build-env.py")
    env = Environment()

env.Program('test', 'test.cu')
