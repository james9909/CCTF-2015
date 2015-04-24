.class public Lcom/snapchat/android/ApplicationMemoryMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/ComponentCallbacks2;

.field private final b:Lcom/snapchat/android/util/bitmap/BitmapPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ApplicationMemoryMonitor;-><init>(Lcom/snapchat/android/util/bitmap/BitmapPool;)V

    .line 20
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/bitmap/BitmapPool;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/snapchat/android/ApplicationMemoryMonitor$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ApplicationMemoryMonitor$1;-><init>(Lcom/snapchat/android/ApplicationMemoryMonitor;)V

    iput-object v0, p0, Lcom/snapchat/android/ApplicationMemoryMonitor;->a:Landroid/content/ComponentCallbacks2;

    .line 24
    iput-object p1, p0, Lcom/snapchat/android/ApplicationMemoryMonitor;->b:Lcom/snapchat/android/util/bitmap/BitmapPool;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ApplicationMemoryMonitor;)Lcom/snapchat/android/util/bitmap/BitmapPool;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/snapchat/android/ApplicationMemoryMonitor;->b:Lcom/snapchat/android/util/bitmap/BitmapPool;

    return-object v0
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p0}, Lcom/snapchat/android/ApplicationMemoryMonitor;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    sparse-switch p0, :sswitch_data_0

    .line 60
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 52
    :sswitch_0
    const-string v0, "TRIM_MEMORY_BACKGROUND"

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "TRIM_MEMORY_COMPLETE"

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v0, "TRIM_MEMORY_MODERATE"

    goto :goto_0

    .line 55
    :sswitch_3
    const-string v0, "TRIM_MEMORY_RUNNING_CRITICAL"

    goto :goto_0

    .line 56
    :sswitch_4
    const-string v0, "TRIM_MEMORY_RUNNING_LOW"

    goto :goto_0

    .line 57
    :sswitch_5
    const-string v0, "TRIM_MEMORY_RUNNING_MODERATE"

    goto :goto_0

    .line 58
    :sswitch_6
    const-string v0, "TRIM_MEMORY_UI_HIDDEN"

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_5
        0xa -> :sswitch_4
        0xf -> :sswitch_3
        0x14 -> :sswitch_6
        0x28 -> :sswitch_0
        0x3c -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/ApplicationMemoryMonitor;->a:Landroid/content/ComponentCallbacks2;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 29
    return-void
.end method
