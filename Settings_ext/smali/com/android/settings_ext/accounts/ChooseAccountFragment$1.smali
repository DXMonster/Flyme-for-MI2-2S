.class Lcom/android/settings_ext/accounts/ChooseAccountFragment$1;
.super Ljava/lang/Object;
.source "ChooseAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Cl:Lcom/android/settings_ext/accounts/ChooseAccountFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accounts/ChooseAccountFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings_ext/accounts/ChooseAccountFragment$1;->Cl:Lcom/android/settings_ext/accounts/ChooseAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ext/accounts/ChooseAccountFragment$1;->Cl:Lcom/android/settings_ext/accounts/ChooseAccountFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/accounts/ChooseAccountFragment;->a(Lcom/android/settings_ext/accounts/ChooseAccountFragment;ILjava/lang/String;)V

    .line 93
    return-void
.end method