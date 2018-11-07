package com.github.florent37.preferences

expect class Preferences(name: String? = null) {

    fun setInt(key: String, value: Int)
    fun getInt(key: String, defaultValue: Int): Int
    fun getInt(key: String): Int?

    fun setFloat(key: String, value: Float)
    fun getFloat(key: String, defaultValue: Float): Float
    fun getFloat(key: String): Float?

    fun setLong(key: String, value: Long)
    fun getLong(key: String, defaultValue: Long): Long
    fun getLong(key: String): Long?

    fun setString(key: String, value: String)
    fun getString(key: String, defaultValue: String): String
    fun getString(key: String): String?

    fun setBoolean(key: String, value: Boolean)
    fun getBoolean(key: String, defaultValue: Boolean): Boolean
    fun getBoolean(key: String): Boolean?

    fun remove(key: String)
    fun clear()

    fun hasKey(key: String): Boolean
}