# read data if not yet
if(!exists("hpc_2d")) {
        source("read_hpc.r")
}

png("plot3.png", width = 480, height = 480)
plot(hpc_2d_datetime, hpc_2d$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub meatering", col = "black")
lines(hpc_2d_datetime, hpc_2d$Sub_metering_2, col = "red")
lines(hpc_2d_datetime, hpc_2d$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()
