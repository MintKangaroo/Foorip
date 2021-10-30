package com.example.foorip_app_project

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
}

import android.graphics.Color
import android.view.LayoutInflater
import android.widget.TextView
import com.google.android.gms.ads.nativead.NativeAd
import com.google.android.gms.ads.nativead.NativeAdView
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin.NativeAdFactory
import java.util.Map



internal class NativeAdFactoryExample(layoutInflater: LayoutInflater) : NativeAdFactory {
    private val layoutInflater: LayoutInflater
    @Override
    fun createNativeAd(
            nativeAd: NativeAd, customOptions: Map<String?, Object?>?): NativeAdView {
        val adView: NativeAdView = layoutInflater.inflate(R.layout.my_native_ad, null) as NativeAdView
        val headlineView: TextView = adView.findViewById(R.id.ad_headline)
        val bodyView: TextView = adView.findViewById(R.id.ad_body)
        headlineView.setText(nativeAd.getHeadline())
        bodyView.setText(nativeAd.getBody())
        adView.setBackgroundColor(Color.YELLOW)
        adView.setNativeAd(nativeAd)
        adView.setBodyView(bodyView)
        adView.setHeadlineView(headlineView)
        return adView
    }

    init {
        this.layoutInflater = layoutInflater
    }
}
