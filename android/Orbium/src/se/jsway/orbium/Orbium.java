package se.jsway.orbium;

import android.os.Bundle;
import android.view.WindowManager;
import android.webkit.WebSettings.RenderPriority;

import com.phonegap.DroidGap;

public class Orbium extends DroidGap
{
	@Override
	public void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);

		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
			WindowManager.LayoutParams.FLAG_FULLSCREEN | WindowManager.LayoutParams.FLAG_FORCE_NOT_FULLSCREEN);

		super.setIntegerProperty("splashscreen", R.drawable.splash); 
		super.loadUrl("file:///android_asset/www/index.html");

		this.appView.setHorizontalScrollBarEnabled(false);
		this.appView.setVerticalScrollBarEnabled(false);

		this.appView.getSettings().setRenderPriority(RenderPriority.HIGH);
	}
}
