.class Lcom/android/settings_ext/notification/NotificationSettings$3;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic afn:Lcom/android/settings_ext/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/settings_ext/notification/NotificationSettings$3;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 319
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings$3;->afn:Lcom/android/settings_ext/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings_ext/notification/NotificationSettings;->f(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_light_pulse"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
