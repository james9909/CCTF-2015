.class public Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;


# instance fields
.field private final b:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;

    invoke-direct {v0}, Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;-><init>()V

    sput-object v0, Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;->a:Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;-><init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V

    .line 13
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;->b:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 18
    return-void
.end method

.method public static a()Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;->a:Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aq()Z

    move-result v3

    .line 26
    iget-object v2, p0, Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;->b:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v2

    sget-object v4, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->e:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v2, v4, :cond_0

    move v2, v0

    .line 28
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 26
    goto :goto_0

    :cond_1
    move v0, v1

    .line 28
    goto :goto_1
.end method
