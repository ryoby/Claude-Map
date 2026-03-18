# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

**Field Planner (フィールドプランナー)** is a single-file Japanese web application for managing field work schedules on an interactive map. No build system or package manager is used.

## Running the Application

Open `index.html` directly in a browser — no server or build step required. All dependencies are loaded from CDN (Leaflet.js v1.9.4).

## Architecture

The entire application lives in `index.html` (~997 lines) with three co-located sections:

- **`<style>` (lines 9–431)**: All CSS, including responsive layout and Material-style components
- **HTML markup (lines 433–532)**: Page structure — top bar, map container, FAB buttons, bottom sheet form, side panel
- **`<script>` (lines 533–981)**: All application logic

### JavaScript Structure (inside `<script>`)

| Concern | Description |
|---|---|
| Map initialization | Leaflet map centered on Tokyo (35.6812, 139.7671), zoom 13, OSM tiles |
| Drawing system | Canvas overlay on map; freehand polygon drawing with Douglas-Peucker simplification |
| Data layer | CRUD operations on `localStorage` key `fp_schedules`; each schedule has `{id, category, title, date, memo, polygon}` |
| UI state | Imperative DOM manipulation; bottom sheet, side panel, toast notifications |
| Geolocation | Optional — centers map on user location at startup |

### Work Categories

Six categories with fixed colors: 草刈り (green), 野焼き (orange), 川掃除 (blue), 山林管理 (dark green), 農業計画 (yellow), その他 (purple).

## Key Implementation Notes

- **No module system**: All code is global-scope vanilla JS. Variables and functions defined at top level of `<script>` are the full state and API.
- **Polygon drawing**: Uses a `<canvas>` element layered over the Leaflet map. Mouse/touch events captured on canvas, projected to lat/lng via `map.containerPointToLatLng()`.
- **Data persistence**: `localStorage` only — no backend, no sync. Clearing browser storage deletes all data.
- **CDN dependencies**: Leaflet JS and CSS loaded from `unpkg.com`. No local copies.
