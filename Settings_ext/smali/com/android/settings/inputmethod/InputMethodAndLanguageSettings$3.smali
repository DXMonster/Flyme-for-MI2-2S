.class Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$3;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic abl:Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic abn:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$3;->abl:Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$3;->abn:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$3;->abl:Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$3;->abn:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-static {v0, v1}, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;->a(Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 607
    const/4 v0, 0x1

    return v0
.end method
