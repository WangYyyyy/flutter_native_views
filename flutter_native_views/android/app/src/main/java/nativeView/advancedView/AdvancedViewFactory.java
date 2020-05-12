package nativeView.advancedView;

import android.content.Context;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class AdvancedViewFactory extends PlatformViewFactory {
    private final FlutterPlugin.FlutterPluginBinding flutterPluginBinding;

    public AdvancedViewFactory(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        super(StandardMessageCodec.INSTANCE);
        this.flutterPluginBinding = flutterPluginBinding;
    }

    @Override
    public PlatformView create(Context context, int viewId, Object args) {
        return new AdvancedView(context, flutterPluginBinding);
    }
}
