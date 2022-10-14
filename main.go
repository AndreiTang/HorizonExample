package main

import (
	"HorizonExample/api"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.GET("/health", api.Health)
	r.Run(":8088") // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
