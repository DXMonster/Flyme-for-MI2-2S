.class Lcom/android/settings_ext/wfd/q;
.super Landroid/preference/ListPreference;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/settings_ext/wfd/q;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    .prologue
    .line 475
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 476
    if-eqz p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/settings_ext/wfd/q;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-virtual {p0}, Lcom/android/settings_ext/wfd/q;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->c(Lcom/android/settings_ext/wfd/WifiDisplaySettings;I)I

    .line 478
    const-string v0, "%1$s"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wfd/q;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/android/settings_ext/wfd/q;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 480
    iget-object v0, p0, Lcom/android/settings_ext/wfd/q;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings_ext/wfd/q;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->g(Lcom/android/settings_ext/wfd/WifiDisplaySettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ext/wfd/q;->aoA:Lcom/android/settings_ext/wfd/WifiDisplaySettings;

    invoke-static {v2}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->h(Lcom/android/settings_ext/wfd/WifiDisplaySettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/wfd/WifiDisplaySettings;->a(Lcom/android/settings_ext/wfd/WifiDisplaySettings;II)V

    .line 482
    :cond_0
    return-void
.end method
