package nativeView.normalView;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;

import java.util.Map;

import io.flutter.plugin.platform.PlatformView;

public class NormalView implements PlatformView {

    private TextView textView;

    @SuppressLint("SetTextI18n")
    NormalView(Context context, Object args) {
        Map map = (Map) args;
        this.textView = new TextView(context);
        this.textView.setText("Android原生View\n" + map.get("value"));
        this.textView.setGravity(Gravity.CENTER);
        this.textView.setTextColor(0xFFFFFFFF);
    }

    @Override
    public View getView() {
        return textView;
    }

    @Override
    public void dispose() {

    }
}
