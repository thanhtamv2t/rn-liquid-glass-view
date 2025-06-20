package com.liquidglass

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = LiquidGlassViewManager.NAME)
class LiquidGlassViewManager :
  LiquidGlassViewManagerSpec<LiquidGlassView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): LiquidGlassView {
    return LiquidGlassView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: LiquidGlassView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "LiquidGlassView"
  }
}
