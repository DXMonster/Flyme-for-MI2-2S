.class Lcom/android/settings_ext/users/UserSettings$10;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/UserSettings;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/settings_ext/users/UserSettings$10;->this$0:Lcom/android/settings_ext/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/settings_ext/users/UserSettings$10;->this$0:Lcom/android/settings_ext/users/UserSettings;

    # invokes: Lcom/android/settings_ext/users/UserSettings;->exitGuest()V
    invoke-static {v0}, Lcom/android/settings_ext/users/UserSettings;->access$1500(Lcom/android/settings_ext/users/UserSettings;)V

    .line 617
    return-void
.end method