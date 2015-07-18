# read data if not yet
if(!exists("hpc_2d")) {
        source("read_hpc.r")
}

png("plot4.png", width = 480, height = 480)

# partition drawing space to 2 rows and 2 columns
par(mfrow = c(2, 2))

# plot at row 1, col 1
plot(hpc_2d_datetime, hpc_2d$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")

# plot at row 1, col 2
plot(hpc_2d_datetime, hpc_2d$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")

# plot at row 2, col 1
plot(hpc_2d_datetime, hpc_2d$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub meatering", col = "black")
lines(hpc_2d_datetime, hpc_2d$Sub_metering_2, col = "red")
lines(hpc_2d_datetime, hpc_2d$Sub_metering_3, col = "blue")
# note the legend has no boarder, which is different from plot3
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")

#plot at row 2, col 2
plot(hpc_2d_datetime, hpc_2d$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")

dev.off()

