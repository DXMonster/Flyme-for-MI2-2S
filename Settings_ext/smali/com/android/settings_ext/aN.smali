.class Lcom/android/settings_ext/aN;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fb:Lcom/android/settings_ext/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/CryptKeeper;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/android/settings_ext/aN;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/settings_ext/aN;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->l(Lcom/android/settings_ext/CryptKeeper;)V

    .line 912
    return-void
.end method