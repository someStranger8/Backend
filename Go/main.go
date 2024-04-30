package main

import (
	"fmt"
	"log"

	"github.com/fasthttp/router"
	"github.com/valyala/fasthttp"
)

func Index(ctx *fasthttp.RequestCtx) {
	ctx.WriteString("Hello, World!")
}

func main() {
	r := router.New()
	r.GET("/", Index)

	log.Fatal(fasthttp.ListenAndServe(":443", r.Handler))
}
