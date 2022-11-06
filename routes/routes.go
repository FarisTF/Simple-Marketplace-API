package routes
import (
	"net/http"
	"github.com/gin-gonic/gin"
	controllers "github.com/FarisTF/marketplace_api/controllers"
)

func Routes(router *gin.Engine) {
	router.GET("/", welcome)
	router.GET("/produk/all", controllers.GetAllProduk)
	router.GET("/produk/:produkId", controllers.GetProdukDetail)
	router.GET("/keranjang", controllers.GetAllKeranjang)
	router.POST("/keranjang", controllers.AddKeranjang)
	router.DELETE("/keranjang/:keranjangId", controllers.DeleteKeranjang)
	router.PUT("/produk/:produkId", controllers.EditStok)
	router.NoRoute(notFound)
}

func welcome(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"status":  200,
		"message": "Welkam To Simple Marketplace API",
	})
	return
}

func notFound(c *gin.Context) {
	c.JSON(http.StatusNotFound, gin.H{
		"status":  404,
		"message": "Route Not Found",
	})
	return
}
