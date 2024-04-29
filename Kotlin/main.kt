import io.ktor.server.netty.*
import io.ktor.server.routing.*
import io.ktor.server.application.*
import io.ktor.http.*
import io.ktor.server.response.*
import io.ktor.server.engine.*

fun main() {
    embeddedServer(Netty, 443) {
        routing {
            get("/") {
                call.respondText("<h1>Hello, world!</h1>", ContentType.Text.Html)
            }
        }
    }.start(wait = true)
}
