package com.example.first_day_of_the_week

import android.os.Bundle
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.Result
import java.util.*

/** FirstDayOfTheWeekPlugin */
class FirstDayOfTheWeekPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "first_day_of_the_week")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
          if (call.method == "getFirstDayOfWeek") {
              val firstDayOfWeek = Calendar.getInstance().firstDayOfWeek
                result.success(firstDayOfWeek)
            } else {
                result.notImplemented()
            }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
