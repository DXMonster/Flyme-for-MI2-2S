.class final Lmiui/util/NotificationFilterHelper$1;
.super Ljava/lang/Object;
.source "NotificationFilterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/NotificationFilterHelper;->loadAppNetFlag(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lmiui/util/NotificationFilterHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    # getter for: Lmiui/util/NotificationFilterHelper;->sNetFilterMap:Ljava/util/HashMap;
    invoke-static {}, Lmiui/util/NotificationFilterHelper;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 80
    # getter for: Lmiui/util/NotificationFilterHelper;->sUidMap:Ljava/util/HashMap;
    invoke-static {}, Lmiui/util/NotificationFilterHelper;->access$100()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 81
    iget-object v4, p0, Lmiui/util/NotificationFilterHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 83
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 85
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lmiui/util/NotificationFilterHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v3}, Lmiui/util/NotificationFilterHelper;->loadAppNetFlagByPkg(Landroid/content/Context;Ljava/lang/String;)I

    .line 86
    # getter for: Lmiui/util/NotificationFilterHelper;->sUidMap:Ljava/util/HashMap;
    invoke-static {}, Lmiui/util/NotificationFilterHelper;->access$100()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 88
    iget-object v4, p0, Lmiui/util/NotificationFilterHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v3}, Lmiui/util/NotificationFilterHelper;->loadAppNetFlagByPkg(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    return-void
.end method
