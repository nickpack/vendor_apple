#
# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_PACKAGES := \
	AccountAndSyncSettings \
	ApplicationsProvider \
	AlarmProvider \
	Browser \
	Bluetooth \
	Bugreport \
    Calculator \
    Calendar \
	CalendarProvider \
    Camera \
    CertInstaller \
	Contacts \
	ContactsProvider \
	DefaultContainerService \
	DeskClock \
	DownloadProvider \
	DrmProvider \
	Email \
	framework-res \
	Gallery \
    Home \
    HTMLViewer \
    LatinIME \
    Launcher2 \
    MediaProvider \
	Music \   
    PicoTts \
	Provision \
    Protips \
    QuickSearchBox \
	Settings \
    SettingsProvider \
	Sync \
	SyncProvider \
    TtsService \
    VpnServices \
    UserDictionaryProvider \
    PackageInstaller \
    Updater

PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true   \
    media.stagefright.enable-scan=true   \
    media.stagefright.enable-http=true