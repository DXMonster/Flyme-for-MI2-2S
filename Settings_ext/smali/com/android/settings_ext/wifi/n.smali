.class Lcom/android/settings_ext/wifi/n;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic atf:Lcom/android/settings_ext/wifi/l;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/l;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings_ext/wifi/n;->atf:Lcom/android/settings_ext/wifi/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ext/wifi/n;->atf:Lcom/android/settings_ext/wifi/l;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/l;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->finish()V

    .line 147
    return-void
.end method