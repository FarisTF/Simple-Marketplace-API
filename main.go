package main

import (
	"log"
	"github.com/gin-gonic/gin"

	config "github.com/FarisTF/marketplace_api/config"
	routes "github.com/FarisTF/marketplace_api/routes"
)

func main() {
	config.Connect()

	router := gin.Default()
	
	routes.Routes(router)
	log.Fatal(router.Run(":4747"))
}
