package sample

import com.github.florent37.preferences.Preferences

interface MainView {
    fun displayName(name: String)
}

class MainPresenter {
    private val preferences = Preferences()

    private var view: MainView? = null

    fun bind(view: MainView){
        this.view = view
    }

    fun unbind(){
        this.view = null
    }

    fun save(name: String){
        preferences.setString("name", name)
    }

    fun load(){
        val name = preferences.getString("name", "")
        view?.displayName(name)
    }
}