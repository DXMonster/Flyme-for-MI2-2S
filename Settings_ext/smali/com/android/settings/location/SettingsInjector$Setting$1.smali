.class Lcom/android/settings_ext/location/SettingsInjector$Setting$1;
.super Landroid/os/Handler;
.source "SettingsInjector.java"


# instance fields
.field final synthetic adf:Lcom/android/settings_ext/location/SettingsInjector$Setting;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/location/SettingsInjector$Setting;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/settings_ext/location/SettingsInjector$Setting$1;->adf:Lcom/android/settings_ext/location/SettingsInjector$Setting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 441
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 442
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 443
    const-string v2, "SettingsInjector"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    const-string v2, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings_ext/location/SettingsInjector$Setting$1;->adf:Lcom/android/settings_ext/location/SettingsInjector$Setting;

    iget-object v4, v4, Lcom/android/settings_ext/location/SettingsInjector$Setting;->adc:Lcom/android/settings_ext/location/InjectedSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/location/SettingsInjector$Setting$1;->adf:Lcom/android/settings_ext/location/SettingsInjector$Setting;

    iget-object v0, v0, Lcom/android/settings_ext/location/SettingsInjector$Setting;->add:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/android/settings_ext/location/SettingsInjector$Setting$1;->adf:Lcom/android/settings_ext/location/SettingsInjector$Setting;

    iget-object v0, v0, Lcom/android/settings_ext/location/SettingsInjector$Setting;->add:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/settings_ext/location/SettingsInjector$Setting$1;->adf:Lcom/android/settings_ext/location/SettingsInjector$Setting;

    iget-object v0, v0, Lcom/android/settings_ext/location/SettingsInjector$Setting;->ade:Lcom/android/settings_ext/location/SettingsInjector;

    invoke-static {v0}, Lcom/android/settings_ext/location/SettingsInjector;->b(Lcom/android/settings_ext/location/SettingsInjector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/location/SettingsInjector$Setting$1;->adf:Lcom/android/settings_ext/location/SettingsInjector$Setting;

    iget-object v1, v1, Lcom/android/settings_ext/location/SettingsInjector$Setting;->ade:Lcom/android/settings_ext/location/SettingsInjector;

    invoke-static {v1}, Lcom/android/settings_ext/location/SettingsInjector;->b(Lcom/android/settings_ext/location/SettingsInjector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings_ext/location/SettingsInjector$Setting$1;->adf:Lcom/android/settings_ext/location/SettingsInjector$Setting;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 450
    return-void
.end method
