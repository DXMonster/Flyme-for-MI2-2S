.class Lcom/android/settings_ext/wifi/L;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic auh:Landroid/widget/EditText;

.field final synthetic aui:Lcom/android/settings_ext/wifi/WifiAPITest;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings_ext/wifi/L;->aui:Lcom/android/settings_ext/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/settings_ext/wifi/L;->auh:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings_ext/wifi/L;->auh:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/wifi/L;->aui:Lcom/android/settings_ext/wifi/WifiAPITest;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings_ext/wifi/WifiAPITest;->a(Lcom/android/settings_ext/wifi/WifiAPITest;I)I

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/wifi/L;->aui:Lcom/android/settings_ext/wifi/WifiAPITest;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/WifiAPITest;->b(Lcom/android/settings_ext/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/L;->aui:Lcom/android/settings_ext/wifi/WifiAPITest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiAPITest;->a(Lcom/android/settings_ext/wifi/WifiAPITest;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method