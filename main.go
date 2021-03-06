package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	fmt.Fprintf(os.Stdout, "Listening on :%s\n", port)
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		hostname, _ := os.Hostname()
		fmt.Fprintf(w, "%s\n", hostname)
	})

	log.Fatal(http.ListenAndServe(":"+port, nil))
}
