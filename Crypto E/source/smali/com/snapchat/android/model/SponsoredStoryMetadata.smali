.class public Lcom/snapchat/android/model/SponsoredStoryMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPostviewDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postview_display_name"
    .end annotation
.end field

.field private mPreviewDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preview_display_name"
    .end annotation
.end field

.field private mSponsor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sponsor"
    .end annotation
.end field

.field private mThirdPartyTrackingUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "third_party_tag_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/snapchat/android/model/SponsoredStoryMetadata;->mPreviewDisplayName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/snapchat/android/model/SponsoredStoryMetadata;->mPostviewDisplayName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/snapchat/android/model/SponsoredStoryMetadata;->mSponsor:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/snapchat/android/model/SponsoredStoryMetadata;->mThirdPartyTrackingUrl:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryMetadata;->mPreviewDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryMetadata;->mPostviewDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryMetadata;->mSponsor:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryMetadata;->mThirdPartyTrackingUrl:Ljava/lang/String;

    return-object v0
.end method
