.class Lcom/android/settings_ext/e;
.super Ljava/lang/Object;
.source "AccessControlSetApp.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final p:Ljava/util/HashMap;

.field final synthetic q:Lcom/android/settings_ext/AccessControlSetApp;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/AccessControlSetApp;)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ext/e;->q:Lcom/android/settings_ext/AccessControlSetApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/e;->sCollator:Ljava/text/Collator;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/e;->p:Ljava/util/HashMap;

    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ext/e;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 61
    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings_ext/e;->q:Lcom/android/settings_ext/AccessControlSetApp;

    invoke-static {v0}, Lcom/android/settings_ext/AccessControlSetApp;->a(Lcom/android/settings_ext/AccessControlSetApp;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/settings_ext/e;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    return-object v0
.end method


# virtual methods
.method public compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/e;->sCollator:Ljava/text/Collator;

    invoke-direct {p0, p1}, Lcom/android/settings_ext/e;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/settings_ext/e;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 49
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/e;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
