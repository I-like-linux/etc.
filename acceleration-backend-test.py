unit = "m/s"
counter = 0
velocity = int(input("starting velocity (m/s): "))
distance = int(input("distance (number of cycles for the simulation): "))
gravity_multiplyer = int(input("gravity multiplyer: "))
obj_terminal_velocity = int(input("objects terminal velocity (m/s): "))
simulation_running = False

print("press ENTER to start, ctrl+C to exit")
ask_to_start = input("")

for i in range(0, distance):
    if velocity < obj_terminal_velocity:
        velocity = velocity + gravity_multiplyer

    counter = counter + 1
    simulation_output = str(counter) + " - " + str(velocity) + " " + unit

    print(simulation_output)

print("simulation end")
