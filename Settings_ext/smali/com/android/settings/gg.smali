.class Lcom/android/settings_ext/gg;
.super Ljava/lang/Object;
.source "SetFullBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic wJ:Lcom/android/settings_ext/SetFullBackupPassword;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/SetFullBackupPassword;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings_ext/SetFullBackupPassword;->wH:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings_ext/SetFullBackupPassword;->wD:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    iget-object v1, v1, Lcom/android/settings_ext/SetFullBackupPassword;->wE:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    iget-object v2, v2, Lcom/android/settings_ext/SetFullBackupPassword;->wF:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string v0, "SetFullBackupPassword"

    const-string v1, "password mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    const v1, 0x7f09079c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    invoke-static {v2, v0, v1}, Lcom/android/settings_ext/SetFullBackupPassword;->a(Lcom/android/settings_ext/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "SetFullBackupPassword"

    const-string v1, "password set successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    const v1, 0x7f09079b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    invoke-virtual {v0}, Lcom/android/settings_ext/SetFullBackupPassword;->finish()V

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "SetFullBackupPassword"

    const-string v1, "failure; password mismatch?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    const v1, 0x7f09079d

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings_ext/SetFullBackupPassword;->wG:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/gg;->wJ:Lcom/android/settings_ext/SetFullBackupPassword;

    invoke-virtual {v0}, Lcom/android/settings_ext/SetFullBackupPassword;->finish()V

    goto :goto_0

    .line 74
    :cond_3
    const-string v0, "SetFullBackupPassword"

    const-string v1, "Click on unknown view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
