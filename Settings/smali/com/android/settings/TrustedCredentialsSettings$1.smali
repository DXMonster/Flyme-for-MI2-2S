.class Lcom/android/settings_ext/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/TrustedCredentialsSettings;->addTab(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/settings_ext/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings_ext/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/settings_ext/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings_ext/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/settings_ext/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-virtual {v1, p3, p4}, Lcom/android/settings_ext/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/settings_ext/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    # invokes: Lcom/android/settings_ext/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings_ext/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/settings_ext/TrustedCredentialsSettings;->access$800(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$CertHolder;)V

    .line 229
    const/4 v0, 0x1

    return v0
.end method