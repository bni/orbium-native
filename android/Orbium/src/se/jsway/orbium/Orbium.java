package se.jsway.orbium;

import android.os.Bundle;
import org.apache.cordova.*;

public class Orbium extends DroidGap
{
	@Override
	public void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);

		super.loadUrl(Config.getStartUrl());
	}
}
