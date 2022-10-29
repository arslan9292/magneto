# Magneto

### Introduction

Charles X. Xavier once told Magneto: "I believe the true focus lies somewhere between rage and serenity". Magneto, a fictional character of the Marvel Universe and the inspiration for this project. The power of moving objects with own hands is no longer a fiction and was brought to reality by controlling a car using one own's hand gesture. Yes, you read it right. ;)

### Overview of Project

This project aims to develop a complete package where consists of two major parts:
 1. The Controller Unit 
 2. Controlled Unit (The Car)

The bot is a 4 wheel drive, our hand movements will displace the accelerometer and at different positions, the different readings provided by the accelerometer are used to program the motion of the 4 wheels. Speed control is done using PWM pins and the bot turns by the method of stopping the wheels of one side when the wheels on the other side are in motion, thus producing a turning effect.

### Hardware/Software Used

The controlling part that one would wear on hand consists of an accelerometer (adxl335), a development board with atmega8 microcontroller, encoder (HT640) and an RF transmitter 434 MHz and one alternative frequency.

On the other hand, the bot would have a receiver, a decoder (HT648L), a development board with an atmega32 microcontroller and the motors are driven using two L239D motor driver ICs.

The project contributors: Ashish Arun and Jigyasu Pandey.

### The Design & Look

![DSC00310](https://user-images.githubusercontent.com/6632266/198821709-faaa9780-da20-494a-9bca-dfac258ffbb6.JPG)

![DSC00320](https://user-images.githubusercontent.com/6632266/198821718-63f18b97-52ad-4802-be3b-52348539b6cf.JPG)

![DSC00333](https://user-images.githubusercontent.com/6632266/198821754-3c102a9d-8d6f-461b-a71a-c6acf072c5c3.JPG)
