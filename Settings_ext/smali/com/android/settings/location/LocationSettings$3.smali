.class Lcom/android/settings_ext/location/LocationSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "LocationSettings.java"


# instance fields
.field final synthetic acI:Lcom/android/settings_ext/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/settings_ext/location/LocationSettings$3;->acI:Lcom/android/settings_ext/location/LocationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 214
    const-string v0, "LocationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "LocationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received settings change intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/location/LocationSettings$3;->acI:Lcom/android/settings_ext/location/LocationSettings;

    invoke-static {v0}, Lcom/android/settings_ext/location/LocationSettings;->a(Lcom/android/settings_ext/location/LocationSettings;)Lcom/android/settings_ext/location/SettingsInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/location/SettingsInjector;->qi()V

    .line 218
    return-void
.end method
