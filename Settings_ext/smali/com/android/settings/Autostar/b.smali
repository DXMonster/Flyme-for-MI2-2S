.class Lcom/android/settings_ext/Autostar/b;
.super Ljava/lang/Object;
.source "AutoMangement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bC:Lcom/android/settings_ext/Autostar/AutoMangement;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/Autostar/AutoMangement;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ext/Autostar/b;->bC:Lcom/android/settings_ext/Autostar/AutoMangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ext/Autostar/b;->bC:Lcom/android/settings_ext/Autostar/AutoMangement;

    iget-object v1, p0, Lcom/android/settings_ext/Autostar/b;->bC:Lcom/android/settings_ext/Autostar/AutoMangement;

    iget-object v1, v1, Lcom/android/settings_ext/Autostar/AutoMangement;->bw:Landroid/app/Fragment;

    const-class v2, Lcom/android/settings_ext/Autostar/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f090c5c

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/Autostar/AutoMangement;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 84
    return-void
.end method
