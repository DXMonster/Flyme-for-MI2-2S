.class Lcom/android/settings_ext/wfd/w;
.super Lcom/android/settings_ext/wfd/u;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

.field private final aoF:Landroid/hardware/display/WifiDisplay;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V
    .locals 1

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/settings_ext/wfd/w;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    .line 719
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ext/wfd/u;-><init>(Lcom/android/settings_ext/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    .line 721
    iput-object p4, p0, Lcom/android/settings_ext/wfd/w;->aoF:Landroid/hardware/display/WifiDisplay;

    .line 722
    const v0, 0x7f040133

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wfd/w;->setWidgetLayoutResource(I)V

    .line 723
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 727
    invoke-super {p0, p1}, Lcom/android/settings_ext/wfd/u;->onBindView(Landroid/view/View;)V

    .line 729
    const v0, 0x7f10019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 730
    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    invoke-virtual {p0}, Lcom/android/settings_ext/wfd/w;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 734
    invoke-virtual {p0}, Lcom/android/settings_ext/wfd/w;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 736
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 737
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 740
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/settings_ext/wfd/w;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings_ext/wfd/w;->aoF:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v1}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->a(Lcom/android/settings_ext/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 745
    return-void
.end method