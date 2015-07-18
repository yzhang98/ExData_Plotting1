# read data if not yet
if(!exists("hpc_2d")) {
        source("read_hpc.r")
}

png("plot2.png", width = 480, height = 480)
plot(hpc_2d_datetime, hpc_2d$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
