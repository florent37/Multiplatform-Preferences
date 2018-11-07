package sample

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity(), MainView {

    private val presenter = MainPresenter()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        presenter.bind(this)

        save.setOnClickListener {
            presenter.save(edit.text.toString())
        }
        load.setOnClickListener {
            presenter.load()
        }
    }

    override fun displayName(name: String) {
        label.text = "Saved : ${name}"
    }
}