.class Lcom/android/settings_ext/notification/SettingPref$1;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic afW:Lcom/android/settings_ext/notification/SettingPref;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/SettingPref;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ext/notification/SettingPref$1;->afW:Lcom/android/settings_ext/notification/SettingPref;

    iput-object p2, p0, Lcom/android/settings_ext/notification/SettingPref$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-object v2, p0, Lcom/android/settings_ext/notification/SettingPref$1;->afW:Lcom/android/settings_ext/notification/SettingPref;

    iget-object v3, p0, Lcom/android/settings_ext/notification/SettingPref$1;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ext/notification/SettingPref;->i(Landroid/content/Context;I)Z

    .line 84
    return v1

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
