.class public Lcom/android/settings/deviceinfo/MsdInstallPicker;
.super Lmiui/app/Activity;
.source "MsdInstallPicker.java"


# instance fields
.field private SI:Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;

.field private SJ:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings/deviceinfo/MsdInstallPicker$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker$2;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->SJ:Landroid/widget/AdapterView$OnItemClickListener;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/MsdInstallPicker;)Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->SI:Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lmiui/app/Activity;->finish()V

    .line 75
    const/4 v0, 0x0

    const/high16 v1, 0x7f050000

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->overridePendingTransition(II)V

    .line 76
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->finish()V

    .line 70
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f04008a

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->setContentView(I)V

    .line 31
    const v0, 0x7f100021

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0093

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    array-length v5, v3

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v3, v1

    .line 35
    new-instance v7, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;Lcom/android/settings/deviceinfo/MsdInstallPicker$1;)V

    .line 36
    iput-object v6, v7, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;->mText:Ljava/lang/String;

    .line 37
    iput-boolean v2, v7, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;->SL:Z

    .line 38
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;

    invoke-direct {v1, p0, p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->SI:Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;

    .line 41
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->SI:Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->SJ:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    const v0, 0x7f100143

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    new-instance v1, Lcom/android/settings/deviceinfo/MsdInstallPicker$1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker$1;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method
