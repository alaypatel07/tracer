package main

import "fmt"
import "github.com/google/gopacket/pcap"

func main() {
	fmt.Println("Running packet capture on eth0")
	handle, err := pcap.OpenLive("eth0", 1600, true, pcap.BlockForever)
	if err != nil {
		panic(err)
	}
}
