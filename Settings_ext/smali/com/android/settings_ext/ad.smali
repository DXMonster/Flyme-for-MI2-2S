.class Lcom/android/settings_ext/ad;
.super Ljava/lang/Object;
.source "CarrierCustomEditFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic cs:I

.field final synthetic ct:Lcom/android/settings_ext/CarrierCustomEditFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/CarrierCustomEditFragment;I)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings_ext/ad;->ct:Lcom/android/settings_ext/CarrierCustomEditFragment;

    iput p2, p0, Lcom/android/settings_ext/ad;->cs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/ad;->ct:Lcom/android/settings_ext/CarrierCustomEditFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/CarrierCustomEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status_bar_custom_carrier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ext/ad;->cs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/ad;->ct:Lcom/android/settings_ext/CarrierCustomEditFragment;

    invoke-static {v2}, Lcom/android/settings_ext/CarrierCustomEditFragment;->a(Lcom/android/settings_ext/CarrierCustomEditFragment;)[Landroid/widget/EditText;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ext/ad;->cs:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method