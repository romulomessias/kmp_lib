package br.com.stade.kmplib

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform