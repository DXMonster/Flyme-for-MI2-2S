.class Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$3;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$3;->this$0:Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$3;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$3;->this$0:Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;

    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings$3;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    # invokes: Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    invoke-static {v0, v1}, Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;->access$000(Lcom/android/settings_ext/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 537
    const/4 v0, 0x1

    return v0
.end method