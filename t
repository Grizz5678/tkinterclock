#! /usr/bin/python3
#Ce programme crée une horloge modifiable sur l'écran de la machine qu'on utilise. This program creates a clock which displays on your desktop
import sys
from tkinter import *
import time

def tick():
    time_string= time.strftime("%H:%M:%S")
    clock.config(text=time_string)
    clock.after(200,tick)

root= Tk()
clock = Label(root, font =("times", 100, "bold"), bg= "blue")
clock.grid(row=0, column=1)
tick()
root.mainloop()
