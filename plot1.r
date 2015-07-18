# read data if not yet
if(!exists("hpc_2d")) {
        source("read_hpc.r")
}

png("plot1.png", width = 480, height = 480)
hist(hpc_2d$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power kilowatts")
dev.off()
