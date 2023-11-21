all: analyze test all_done

mock-gen:
	flutter pub run build_runner build --delete-conflicting-outputs

analyze:
	flutter analyze

test:
	flutter test

all_done:
	echo "All step done"
