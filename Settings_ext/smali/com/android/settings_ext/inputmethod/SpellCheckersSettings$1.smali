.class Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$1;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic abX:Landroid/view/textservice/SpellCheckerInfo;

.field final synthetic abY:Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$1;->abY:Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$1;->abX:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 190
    if-nez p2, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$1;->abY:Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;

    invoke-static {v0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->a(Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    .line 202
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 203
    iget-object v0, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$1;->abY:Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;

    invoke-static {v0}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->b(Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;)V

    .line 204
    return-void

    .line 193
    :cond_0
    # invokes: Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->bS(I)I
    invoke-static {p2}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->access$100(I)I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$1;->abY:Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;

    invoke-static {v1}, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;->a(Lcom/android/settings_ext/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/inputmethod/SpellCheckersSettings$1;->abX:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    goto :goto_0
.end method