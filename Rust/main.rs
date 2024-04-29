
use actix_web::{get, web, App, HttpServer, Responder};

#[get("/")]
async fn index() -> impl Responder {
  "<h1>Hello, World</h1>"
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
  HttpServer::new(|| {
    App::new().service(index)
  })
  .bind("127.0.0.1:443")
  .run()
  .await
}
