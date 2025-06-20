package com.liquidglass

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.LiquidGlassViewManagerDelegate
import com.facebook.react.viewmanagers.LiquidGlassViewManagerInterface

abstract class LiquidGlassViewManagerSpec<T : View> : SimpleViewManager<T>(), LiquidGlassViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = LiquidGlassViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
