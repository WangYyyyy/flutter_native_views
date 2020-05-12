package nativeView.advancedView;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;

import com.example.flutter_native_views.R;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;

public class AdvancedView implements PlatformView {

    private final View cView;

    @SuppressLint("InflateParams")
    AdvancedView(Context context, FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        BasicMessageChannel<Object> messageChannel = new BasicMessageChannel<>(flutterPluginBinding.getBinaryMessenger(), "native_view_message", StandardMessageCodec.INSTANCE);

        cView = LayoutInflater.from(context).inflate(R.layout.advfirstview, null);

        Button pushB = cView.findViewById(R.id.toPush);
        pushB.setOnClickListener(v -> {
            Intent intent = new Intent(context, AdvSecondActivity.class);
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
        });

        Button closeB = cView.findViewById(R.id.toClose);
        closeB.setOnClickListener(v -> messageChannel.send("exit"));

    }


    @Override
    public View getView() {
        return cView;
    }

    @Override
    public void dispose() {

    }
}
