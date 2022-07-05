
import socket
import sys

def clear_txt():
    txt=open('rec_data.txt','w')
    txt.truncate(0)
    txt.close()

def get_data():
    
    msgFromClient = "CCC"
    bytesToSend = str.encode(msgFromClient,"ascii")
    serverAddressPort = ("192.168.2.237", 16000)
    bufferSize = 1088
    UDPClientSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
    UDPClientSocket.sendto(bytesToSend, serverAddressPort)
    message = []
    for i in range(16):
        msgFromServer = UDPClientSocket.recvfrom(bufferSize)
        message.append(msgFromServer[0])
    return message

def split_data(data):
    text_data= ""
    i=0
    for item in data:
        data_header = item[:11].hex()
        data_content = item[12:-1].hex()
        msg = "Trama: {}\n Size aproximado de la trama: {} bytes \n Cabecera: {} \n Datos recibidos: {}\n\n".format(i,sys.getsizeof(item),data_header,data_content)
        text_data = text_data + msg
        i=i+1
    print(text_data)
    txt=open('rec_data.txt','a+')
    txt.write(text_data)
    txt.close()
    

if __name__ =="__main__":

    clear_txt()
    split_data(get_data())
    
    
