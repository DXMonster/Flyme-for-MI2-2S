.class Lcom/android/settings_ext/notification/DropDownPreference$2;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic adY:Lcom/android/settings_ext/notification/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/DropDownPreference;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ext/notification/DropDownPreference$2;->adY:Lcom/android/settings_ext/notification/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/notification/DropDownPreference$2;->adY:Lcom/android/settings_ext/notification/DropDownPreference;

    invoke-static {v0}, Lcom/android/settings_ext/notification/DropDownPreference;->a(Lcom/android/settings_ext/notification/DropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 71
    const/4 v0, 0x1

    return v0
.end method
