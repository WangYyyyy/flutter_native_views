package nativeView.plugin;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import nativeView.advancedView.AdvancedViewFactory;
import nativeView.normalView.NormalViewFactory;

public class NativeViewPlugin implements FlutterPlugin {

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
        binding.getPlatformViewRegistry().registerViewFactory("normalView", new NormalViewFactory());
        binding.getPlatformViewRegistry().registerViewFactory("advancedView", new AdvancedViewFactory(binding));
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {

    }
}